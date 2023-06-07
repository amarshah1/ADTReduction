
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (not (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Nil l3)) )
(assert (is-Cons l2) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (or (is-Cons l3) (= l3 Nil) (is-Cons Nil)) )
(assert (or (= l3 l1) (= l1 l2) (is-Cons l3) (= l1 Nil)) )
(check-sat)


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
(assert (or (= l2 Nil) (= l2 l3) (= l1 l1)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (not (= l3 l3)) )
(assert (or (= l0 Nil) (is-Cons l1) (= l0 l3) (= l0 Nil)) )
(assert (or (is-Nil l1) (is-Cons Nil) (is-Nil l1) (= l1 l2)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Nil l2)) )
(check-sat)

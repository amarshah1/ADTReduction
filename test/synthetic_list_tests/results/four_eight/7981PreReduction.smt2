
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
(assert (and (= l1 l3) (= l1 Nil) (= l3 l2) (= l0 Nil)) )
(assert (is-Nil l3) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Cons l3)) )
(assert (not (= l3 Nil)) )
(assert (not (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
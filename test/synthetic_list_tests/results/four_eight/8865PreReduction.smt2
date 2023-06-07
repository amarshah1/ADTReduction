
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
(assert (is-Nil l3) )
(assert (not (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Cons l2)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l3 l3) (= l0 l3) (= l0 l3)) )
(check-sat)

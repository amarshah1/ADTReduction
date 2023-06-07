
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
(assert (or (= l1 l3) (= l3 l0) (= l0 Nil) (is-Nil l2)) )
(assert (or (is-Cons l2) (= l2 l1) (= l3 l3) (= l1 l1)) )
(assert (not (is-Cons Nil)) )
(assert (= l3 l0) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (= l0 Nil) )
(check-sat)

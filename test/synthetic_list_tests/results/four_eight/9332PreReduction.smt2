
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
(assert (= l3 l3) )
(assert (or (= l1 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (not (is-Nil l3)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil l3) (= l3 Nil) (= l1 Nil) (= l1 l0)) )
(assert (or (= l2 l3) (is-Cons Nil) (is-Cons l1) (= l2 Nil)) )
(assert (= l0 l0) )
(check-sat)

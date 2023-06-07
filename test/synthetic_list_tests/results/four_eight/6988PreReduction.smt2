
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
(assert (not (is-Cons l2)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l0) (= l1 l0)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (and (is-Cons l3) (= l3 Nil)) )
(assert (and (= l3 l2) (= l1 Nil) (= l0 Nil) (= l1 l2)) )
(assert (or (= l0 l1) (= l1 Nil) (= l2 Nil) (is-Cons l2)) )
(check-sat)
